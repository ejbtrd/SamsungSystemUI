.class public Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "SoundModeTileSelectBoard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeMuteButton;,
        Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeVibrationButton;,
        Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeSoundButton;,
        Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;,
        Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;
    }
.end annotation


# instance fields
.field private mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;

.field private mIsInit:Z

.field private mMotion:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

.field private mMuteWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

.field private mSoundWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

.field private mVibrateWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mIsInit:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mIsInit:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mMotion:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    return-object p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .line 73
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 74
    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeSoundButton;

    sget v1, Lcom/android/systemui/R$id;->sound_image_button_wrapper:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeSoundButton;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mSoundWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    .line 75
    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeVibrationButton;

    sget v1, Lcom/android/systemui/R$id;->vibrate_image_button_wrapper:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeVibrationButton;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mVibrateWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    .line 76
    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeMuteButton;

    sget v1, Lcom/android/systemui/R$id;->mute_image_button_wrapper:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeMuteButton;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mMuteWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    .line 77
    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mMotion:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    .line 78
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mIsInit:Z

    return-void
.end method

.method public setBoardToTileCallback(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;

    return-void
.end method

.method public updateAllButtonViews(I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mSoundWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->updateViews(I)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mVibrateWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->updateViews(I)V

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->mMuteWrapper:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->updateViews(I)V

    return-void
.end method
