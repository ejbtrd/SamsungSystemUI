.class Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeSoundButton;
.super Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;
.source "SoundModeTileSelectBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundModeSoundButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeSoundButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;Landroid/view/ViewGroup;I)V

    const-string p1, "Sound"

    .line 178
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mSALoggingDetail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public updateViews(I)V
    .locals 5

    .line 183
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->updateViews(I)V

    .line 184
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeSoundButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->access$000(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeSoundButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->access$000(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;->getIsSystemSettingAllSoundOff()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mParent:Landroid/view/ViewGroup;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-eqz p1, :cond_4

    const-string p1, "SoundModeTile_SBoard"

    const-string v1, " all_sound_off is ON -> Sound Button Board of SoundModeTile of DetailView need to be disabled."

    .line 187
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeSoundButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$color;->qs_detail_secondary_text_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    ushr-int/lit8 v1, p1, 0x18

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/high16 v2, 0x1000000

    mul-int/2addr v1, v2

    const v2, 0xffffff

    add-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    and-int/2addr p1, v1

    .line 195
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mImageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 196
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mWaveS:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mWaveL:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 197
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 198
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mWaveL:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mSplashView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 201
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mDot:Landroid/widget/RadioButton;

    if-eqz v1, :cond_3

    .line 204
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 206
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    return-void
.end method
