#  Making a Swift Framework

* Mapping out modules

If you need to bridge between ObjC and Swift you'll need to map out the modules and export them. This is a bit silly but it works.
1. Create a module map at the top-level of your project. In this case NoMAD_ADAuth.private.modulemap
2. create another module map deeper in
3. add the project itself to the compiler search path
4. imoprt NoMADPrivate into the Swift files




Make sure included Frameworks have the current project as a target
