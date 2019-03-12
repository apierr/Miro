# Blockchain dashboard

```smalltalk
    Metacello
      new
      baseline: 'Miro';
      repository: 'github://apierr/Miro/src';
      load.
```
      
# Getting started

```smalltalk
    (WAAdmin register: self asApplicationAt: 'myApplication')
        addLibrary: JQDeploymentLibrary;
	addLibrary: ChartJsLibrary;
        addLibrary: MDLLibrary
```
