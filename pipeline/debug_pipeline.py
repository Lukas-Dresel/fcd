#!/usr/bin/env python3
import sys
import re
import ipdb
from plumbum.cmd import fcd

def main(argv):
    if len(argv) < 3:
        print("Usage: {} <file_to_decomp> <desired_pipeline_file> [fcd-args]".format(argv[0]))
        sys.exit(1)


    exe = sys.argv[1]
    pipe_file = sys.argv[2]

    with open(pipe_file, 'r') as f:
        stages = f.readlines()

    stages = [ s.strip() for s in stages ]
    pipeline = ' print-module '.join(stages)
    
    fcd_args = argv[3:]
    fcd_args.append('-opt-pipeline={}'.format(pipeline))
    fcd_args.append(exe)
    retcode, stdout, stderr = fcd.run(tuple(fcd_args))
    
    
    lines = stderr.split('\n')
    module_bounds = []
    for i, line in enumerate(lines):
        if re.match("^; ModuleID = '.*'", line):
            module_bounds.append(i)
    
    module_bounds.append(len(lines))
    
    modules = [lines[module_bounds[i] : module_bounds[i + 1]] for i in range(len(module_bounds) - 1)]
    names = ["{:03d}_post_{}.ll".format(i, 'init' if i == 0 else stages[i - 1]) for i in range(len(modules))]
    ipdb.set_trace()
    
    for i in range(len(modules)):
        with open(names[i], 'w') as outfile:
            outfile.write('\n'.join(modules[i]))

if __name__ == '__main__':
    main(sys.argv)
