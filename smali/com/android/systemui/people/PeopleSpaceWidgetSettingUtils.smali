.class public Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;
.super Ljava/lang/Object;
.source "PeopleSpaceWidgetSettingUtils.java"


# static fields
.field public static THEME_BLACK:I = 0x1

.field public static THEME_WHITE:I

.field public static final WIDGET_TEXT_VIEW_IDS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 30
    sget v1, Lcom/android/systemui/R$id;->name:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->subtext:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->text_content:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->status:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->WIDGET_TEXT_VIEW_IDS:[I

    return-void
.end method

.method static getBackgroundColor(Landroid/content/Context;I)I
    .locals 1

    .line 58
    sget v0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->THEME_BLACK:I

    if-ne p1, v0, :cond_0

    .line 59
    sget p1, Lcom/android/systemui/R$color;->widget_dark_bg_color:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/R$color;->widget_light_bg_color:I

    .line 58
    :goto_0
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static getTextFontColor(Landroid/content/Context;Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 64
    sget p1, Lcom/android/systemui/R$color;->widget_text_color_theme_light:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/R$color;->widget_text_color_theme_dark:I

    .line 63
    :goto_0
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static isDarkFont(Landroid/content/Context;II)Z
    .locals 3

    .line 40
    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->isWhiteWallPaper(Landroid/content/Context;)Z

    move-result p0

    .line 44
    sget v0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->THEME_WHITE:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    if-nez p0, :cond_0

    const/16 p0, 0x99

    if-ge p2, p0, :cond_1

    :cond_0
    :goto_0
    move v1, v2

    :cond_1
    move v2, v1

    goto :goto_1

    .line 46
    :cond_2
    sget v0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->THEME_BLACK:I

    if-ne p1, v0, :cond_3

    if-eqz p0, :cond_1

    const/16 p0, 0x7f

    if-le p2, p0, :cond_1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method static isNightModeEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWhiteWallPaper(Landroid/content/Context;)Z
    .locals 2

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "need_dark_font"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
