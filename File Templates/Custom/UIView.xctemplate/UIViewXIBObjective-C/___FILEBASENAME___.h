//___FILEHEADER___

___IMPORTHEADER_cocoaTouchSubclass___

/* System */

/* ViewController */

/* View */

/* Model */

/* Util */

/* NetWork InterFace */

/* Vender */

NS_ASSUME_NONNULL_BEGIN

@interface ___FILEBASENAMEASIDENTIFIER___ : ___VARIABLE_cocoaTouchSubclass___

/**
 Load a CustomView instance from xib
 
 @param bundle When the bundle parameter is nil, the default is [NSBundle mainBundle]
 @return CustomView instance, may be empty
 */
+ (instancetype __nullable)makeFromNibWithBundle:(NSBundle * __nullable)bundle;
@end

NS_ASSUME_NONNULL_END
