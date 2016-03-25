System.config({
    transpiler: 'typescript',
    typescriptOptions: { 
        emitDecoratorMetadata: true 
    },
    packages: { 
        'js': { 
            defaultExtension: 
            'ts' 
        } 
    }
});
System.import('js/core/boot').then(null, console.error.bind(console));