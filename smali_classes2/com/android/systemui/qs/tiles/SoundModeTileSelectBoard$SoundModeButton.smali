.class abstract Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;
.super Ljava/lang/Object;
.source "SoundModeTileSelectBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SoundModeButton"
.end annotation


# instance fields
.field protected mClickListener:Landroid/view/View$OnClickListener;

.field protected mDot:Landroid/widget/RadioButton;

.field protected mImageView:Landroid/widget/ImageView;

.field protected mParent:Landroid/view/ViewGroup;

.field protected mRingerModeProfile:I

.field protected mSALoggingDetail:Ljava/lang/String;

.field protected mSplashView:Landroid/widget/ImageView;

.field protected mTextView:Landroid/widget/TextView;

.field protected mWaveL:Landroid/widget/ImageView;

.field protected mWaveS:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;Landroid/view/ViewGroup;I)V
    .locals 1

    .line 115
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mClickListener:Landroid/view/View$OnClickListener;

    .line 116
    iput p3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mRingerModeProfile:I

    .line 117
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mParent:Landroid/view/ViewGroup;

    .line 119
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$string;->qs_detail_soundmode_image:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mImageView:Landroid/widget/ImageView;

    .line 120
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$string;->qs_detail_soundmode_text:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mTextView:Landroid/widget/TextView;

    .line 121
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$string;->qs_detail_soundmode_dot:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mDot:Landroid/widget/RadioButton;

    .line 122
    sget p1, Lcom/android/systemui/R$id;->volume_icon_mute_splash:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mSplashView:Landroid/widget/ImageView;

    .line 123
    sget p1, Lcom/android/systemui/R$id;->volume_sound_icon_wave_s:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mWaveS:Landroid/widget/ImageView;

    .line 124
    sget p1, Lcom/android/systemui/R$id;->volume_sound_icon_wave_l:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mWaveL:Landroid/widget/ImageView;

    .line 126
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mParent:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mDot:Landroid/widget/RadioButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public updateViews(I)V
    .locals 10

    .line 131
    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mRingerModeProfile:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->access$100(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mRingerModeProfile:I

    if-ne v0, v3, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mWaveS:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mWaveL:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->access$200(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mImageView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mWaveS:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mWaveL:Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startSoundAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :cond_1
    if-eqz p1, :cond_5

    .line 138
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->access$100(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    .line 139
    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mRingerModeProfile:I

    if-ne v0, v2, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->access$200(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startVibrationAnimation(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mSplashView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->access$200(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mSplashView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startModeMuteChangeAnimation(Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    :cond_3
    if-ne v0, v3, :cond_4

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mWaveS:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mWaveL:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->access$200(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mImageView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mWaveS:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mWaveL:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startSoundAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    .line 151
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->access$102(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;Z)Z

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detail Button Board of SoundModeTile update all views (selected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mSALoggingDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundModeTile_SBoard"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p1, :cond_6

    .line 155
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->quick_settings_sound_mode_detail_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_2

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->quick_settings_sound_mode_detail_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 157
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 158
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 160
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mWaveS:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mWaveL:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    .line 161
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 162
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mWaveL:Landroid/widget/ImageView;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 164
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mSplashView:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    .line 165
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 167
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 170
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
