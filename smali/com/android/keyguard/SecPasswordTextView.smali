.class public Lcom/android/keyguard/SecPasswordTextView;
.super Lcom/android/keyguard/PasswordTextView;
.source "SecPasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;
    }
.end annotation


# instance fields
.field private mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

.field private mMaxLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SecPasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/SecPasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/SecPasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p2, 0x10

    .line 36
    iput p2, p0, Lcom/android/keyguard/SecPasswordTextView;->mMaxLength:I

    .line 56
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    sget p2, Lcom/android/systemui/R$string;->password_textview_font_family:I

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 56
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 76
    iget v1, p0, Lcom/android/keyguard/SecPasswordTextView;->mMaxLength:I

    if-lt v0, v1, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/PasswordTextView;->append(C)V

    .line 82
    iget-object p0, p0, Lcom/android/keyguard/SecPasswordTextView;->mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

    if-eqz p0, :cond_1

    .line 83
    invoke-interface {p0}, Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;->append()V

    :cond_1
    return-void
.end method

.method protected getCharBounds()Landroid/graphics/Rect;
    .locals 4

    .line 64
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->kg_pin_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 66
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 68
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    const-string v1, "0"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-object v0
.end method

.method public getPasswordText()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 109
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUIEditText;->onFinishInflate()V

    .line 112
    invoke-virtual {p0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 114
    invoke-virtual {p0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v2

    aget-object v2, v2, v1

    .line 115
    instance-of v3, v2, Landroid/text/InputFilter$LengthFilter;

    if-eqz v3, :cond_0

    .line 116
    check-cast v2, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v2}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/SecPasswordTextView;->mMaxLength:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reset(ZZ)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView;->reset(ZZ)V

    if-nez p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    if-eqz p2, :cond_0

    const-string p1, ""

    const/4 p2, 0x0

    .line 98
    invoke-virtual {p0, p1, p2, p2, p2}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method protected setMaxLength(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/android/keyguard/SecPasswordTextView;->mMaxLength:I

    return-void
.end method

.method public setOnClickCallback(Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/keyguard/SecPasswordTextView;->mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 9

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateStyle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getChangeFlagsString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " colors : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecPasswordTextView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 135
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 136
    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v5, 0x400

    and-long/2addr v5, p1

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_2

    move v3, v4

    :cond_2
    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    if-eqz p3, :cond_4

    const-string p1, "background"

    .line 140
    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Landroid/app/SemWallpaperColors;->getColorThemeColor(J)I

    move-result p1

    .line 141
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateStyle themeColor : #"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/high16 p1, -0x1000000

    :goto_2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_4
    const-string/jumbo p0, "updateStyle : colors is null!"

    .line 144
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 147
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/widget/SystemUIEditText;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    :goto_3
    return-void
.end method
