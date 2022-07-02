.class public Lcom/android/keyguard/SecNumPadKey;
.super Lcom/android/keyguard/NumPadKey;
.source "SecNumPadKey.java"


# instance fields
.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mDigitImage:Landroid/widget/ImageView;

.field private mIsImagePinLock:Z

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SecNumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/SecNumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 54
    sget v0, Lcom/android/systemui/R$layout;->keyguard_sec_num_pad_key:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/SecNumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance p2, Lcom/android/keyguard/SecNumPadKey$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/SecNumPadKey$1;-><init>(Lcom/android/keyguard/SecNumPadKey;)V

    iput-object p2, p0, Lcom/android/keyguard/SecNumPadKey;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    const/4 p2, 0x0

    .line 60
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 62
    iget p2, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-nez p2, :cond_0

    .line 63
    iget-object p2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :cond_0
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_SPR_USIM_TEXT:Z

    if-eqz p2, :cond_1

    .line 67
    sget p2, Lcom/android/systemui/R$string;->keyguard_accessibility_dot:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    :cond_1
    sget p2, Lcom/android/systemui/R$drawable;->keyguard_pin_background:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iput-object p1, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 71
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private hasBlackPinNumberDrawable()Z
    .locals 1

    .line 242
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$drawable;->pin_number_image_1_black:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "SecNumPadKey"

    const-string/jumbo v0, "return null - bitmap is null"

    .line 244
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private updateFont(Lcom/android/systemui/widget/SystemUITextView;)V
    .locals 2

    .line 211
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 212
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getOpenThemeNumericFont()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 217
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_1

    .line 220
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->pinlock_numeric_font_family:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not exist. Use default font."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NumPadKey"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    .line 227
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 84
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/SecNumPadKey;->mIsImagePinLock:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object p1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    .line 86
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p3, p1, 0x2

    sub-int/2addr p2, p3

    .line 87
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    .line 88
    iget-object p4, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    add-int/2addr p1, p2

    .line 90
    iget-object p0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p0, p3, p2, p4, p1}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/keyguard/NumPadKey;->onLayout(ZIIII)V

    :goto_0
    return-void
.end method

.method public updateDigitTextSize()V
    .locals 2

    .line 232
    sget v0, Lcom/android/systemui/R$dimen;->kg_pin_num_pad_font_size:I

    .line 233
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public updateKlondikeTextSize()V
    .locals 2

    .line 237
    sget v0, Lcom/android/systemui/R$dimen;->kg_pin_klondike_font_size:I

    .line 238
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public updateViewStyle()V
    .locals 5

    .line 98
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/SecNumPadKey;->mIsImagePinLock:Z

    if-eqz v0, :cond_1

    .line 102
    sget v0, Lcom/android/systemui/R$layout;->keyguard_image_pad_key:I

    goto :goto_1

    .line 103
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    sget v0, Lcom/android/systemui/R$layout;->keyguard_sec_num_pad_key_tablet:I

    goto :goto_1

    .line 106
    :cond_2
    sget v0, Lcom/android/systemui/R$layout;->keyguard_sec_num_pad_key:I

    .line 108
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 109
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 111
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Landroid/view/LayoutInflater;

    invoke-virtual {v3, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 113
    iget-boolean v0, p0, Lcom/android/keyguard/SecNumPadKey;->mIsImagePinLock:Z

    const-string v3, "background"

    if-eqz v0, :cond_e

    .line 117
    sget v0, Lcom/android/systemui/R$id;->digit_image:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 118
    invoke-static {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    invoke-direct {p0}, Lcom/android/keyguard/SecNumPadKey;->hasBlackPinNumberDrawable()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    .line 120
    :cond_3
    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_c

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 163
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_9_black:I

    goto :goto_2

    .line 164
    :cond_4
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_9:I

    .line 162
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 158
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_8_black:I

    goto :goto_3

    .line 159
    :cond_5
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_8:I

    .line 157
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c

    .line 152
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    .line 153
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_7_black:I

    goto :goto_4

    .line 154
    :cond_6
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_7:I

    .line 152
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 147
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 148
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_6_black:I

    goto :goto_5

    .line 149
    :cond_7
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_6:I

    .line 147
    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 142
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    .line 143
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_5_black:I

    goto :goto_6

    .line 144
    :cond_8
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_5:I

    .line 142
    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 137
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    .line 138
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_4_black:I

    goto :goto_7

    .line 139
    :cond_9
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_4:I

    .line 137
    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 132
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    .line 133
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_3_black:I

    goto :goto_8

    .line 134
    :cond_a
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_3:I

    .line 132
    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 127
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_b

    .line 128
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_2_black:I

    goto :goto_9

    .line 129
    :cond_b
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_2:I

    .line 127
    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 122
    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    .line 123
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_1_black:I

    goto :goto_a

    .line 124
    :cond_c
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_1:I

    .line 122
    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 167
    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    .line 168
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_0_black:I

    goto :goto_b

    .line 169
    :cond_d
    sget v1, Lcom/android/systemui/R$drawable;->pin_number_image_0:I

    .line 167
    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    :goto_c
    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 176
    :cond_e
    sget v0, Lcom/android/systemui/R$id;->digit_text:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    .line 177
    iget v1, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    sget v0, Lcom/android/systemui/R$id;->klondike_text:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    .line 180
    iget v1, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-lez v1, :cond_11

    .line 181
    sget-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-nez v0, :cond_f

    .line 182
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$array;->lockscreen_num_pad_klondike:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    .line 184
    :cond_f
    sget-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    array-length v1, v0

    iget v4, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-le v1, v4, :cond_12

    .line 185
    aget-object v0, v0, v4

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    .line 188
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 190
    :cond_10
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d

    :cond_11
    if-nez v1, :cond_12

    const/16 v1, 0x8

    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    :cond_12
    :goto_d
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    instance-of v1, v0, Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v1, :cond_13

    .line 198
    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    invoke-direct {p0, v0}, Lcom/android/keyguard/SecNumPadKey;->updateFont(Lcom/android/systemui/widget/SystemUITextView;)V

    .line 202
    :cond_13
    :goto_e
    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    .line 201
    invoke-static {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(JZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 203
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->keyguard_pin_background_whitebg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    goto :goto_f

    .line 205
    :cond_14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->keyguard_pin_background:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 207
    :goto_f
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_15

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
