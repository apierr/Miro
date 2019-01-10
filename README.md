# Blockchain dashboard

```smalltalk
    Metacello
      new
      baseline: 'BCDash';
      repository: 'github://apierr/BCDash/src';
      load.
```
      
# Getting started

```smalltalk
    (WAAdmin register: self asApplicationAt: 'myApplication')
        addLibrary: JQDeploymentLibrary;
		addLibrary: ChartJsLibrary;
        addLibrary: MDLLibrary
```
