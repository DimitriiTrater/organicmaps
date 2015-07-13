//
//  UILabel+RuntimeAttributes.m
//  Maps
//
//  Created by v.mikhaylenko on 10.03.15.
//  Copyright (c) 2015 MapsWithMe. All rights reserved.
//

#import "UILabel+RuntimeAttributes.h"
#import "UIKitCategories.h"
#import "UIFont+MapsMeFonts.h"
#import "UIColor+MapsMeColor.h"

// Runtime attributes for setting localized text in Xib.

@implementation UILabel (RuntimeAttributes)

- (void)setLocalizedText:(NSString *)localizedText {
  self.text = L(localizedText);
}

- (NSString *)localizedText {
  return L(self.text);
}

- (void)setFontName:(NSString *)fontName
{
  self.font = [UIFont fontWithName:fontName];
}

- (void)setColorName:(NSString *)colorName
{
  self.textColor = [UIColor colorWithName:colorName];
}

@end

@implementation UITextField (RuntimeAttributes)

- (void)setLocalizedPlaceholder:(NSString *)placeholder
{
  self.placeholder = L(placeholder);
}

- (NSString *)localizedPlaceholder
{
  return L(self.placeholder);
}

- (void)setFontName:(NSString *)fontName
{
  self.font = [UIFont fontWithName:fontName];
}

@end

@implementation MWMTextView (RuntimeAttributes)

- (void)setLocalizedPlaceholder:(NSString *)localizedPlaceholder
{
  self.placeholder = L(localizedPlaceholder);
}

- (NSString *)localizedPlaceholder
{
  return L(self.placeholder);
}

- (void)setFontName:(NSString *)fontName
{
  self.font = [UIFont fontWithName:fontName];
}

@end
