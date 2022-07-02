.class public Lcom/android/systemui/qs/tiles/SoundModeTileVolumeAccessibilityBar;
.super Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.source "SoundModeTileVolumeAccessibilityBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeAccessibilityBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeAccessibilityBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    const/16 p1, 0xa

    .line 48
    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->onAttachedToWindow()V

    .line 54
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    sget v0, Lcom/android/systemui/R$string;->volumepanel_accessibility:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
