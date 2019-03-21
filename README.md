# Mirò

![image](https://user-images.githubusercontent.com/1194257/54742352-7712c180-4bc1-11e9-87b1-5a04a4537682.png)

## Install Mirò

```smalltalk
    Metacello
      new
      baseline: 'Miro';
      repository: 'github://apierr/Miro/src';
      load.
```
      
## Getting started

```smalltalk
    (WAAdmin register: self asApplicationAt: 'myApplication')
        addLibrary: JQDeploymentLibrary;
	addLibrary: ChartJsLibrary;
        addLibrary: MDLLibrary
```
