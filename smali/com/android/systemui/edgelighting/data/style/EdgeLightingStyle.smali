.class public Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;
.super Ljava/lang/Object;
.source "EdgeLightingStyle.java"

# interfaces
.implements Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;


# instance fields
.field private mColorOption:Z

.field private mIsSupport:Z

.field private mKey:Ljava/lang/String;

.field private mPreviewImgResID:I

.field private mSubTitleStrID:I

.field private mTitleStrID:I

.field private mTransparencyOption:Z

.field private mWidthOption:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZIII)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTransparencyOption:Z

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    .line 22
    iput v1, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mSubTitleStrID:I

    .line 24
    iput v1, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    .line 30
    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 31
    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mColorOption:Z

    .line 32
    iput-boolean p3, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mWidthOption:Z

    .line 33
    iput p4, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    .line 34
    iput p5, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mSubTitleStrID:I

    .line 35
    iput p6, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mIsSupport:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZIIIZ)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTransparencyOption:Z

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    .line 22
    iput v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mSubTitleStrID:I

    .line 24
    iput v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    .line 41
    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 42
    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mColorOption:Z

    .line 43
    iput-boolean p3, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mWidthOption:Z

    .line 44
    iput p4, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    .line 45
    iput p5, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mSubTitleStrID:I

    .line 46
    iput p6, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    .line 47
    iput-boolean p7, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mIsSupport:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZIIIZ)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTransparencyOption:Z

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    .line 22
    iput v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mSubTitleStrID:I

    .line 24
    iput v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    .line 52
    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 53
    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mColorOption:Z

    .line 54
    iput-boolean p3, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mWidthOption:Z

    .line 55
    iput-boolean p4, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTransparencyOption:Z

    .line 56
    iput p5, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    .line 57
    iput p6, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mSubTitleStrID:I

    .line 58
    iput p7, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    .line 59
    iput-boolean p8, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mIsSupport:Z

    return-void
.end method


# virtual methods
.method public getIconResId()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getRoundedIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getIconResId()I

    move-result p0

    invoke-static {p1, p1, p0}, Lcom/android/systemui/edgelighting/utils/DrawableUtils;->getRoundedDrawable(Landroid/content/Context;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public isSupportEffect()Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mIsSupport:Z

    return p0
.end method

.method public isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z
    .locals 2

    .line 100
    sget-object v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle$1;->$SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_3

    const/4 p0, 0x5

    if-eq p1, p0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTransparencyOption:Z

    goto :goto_0

    .line 105
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mWidthOption:Z

    goto :goto_0

    .line 102
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mColorOption:Z

    :cond_3
    :goto_0
    return v0
.end method
