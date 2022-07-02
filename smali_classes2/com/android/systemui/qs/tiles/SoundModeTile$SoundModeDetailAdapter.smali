.class final Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;
.super Ljava/lang/Object;
.source "SoundModeTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SoundModeDetailAdapter"
.end annotation


# instance fields
.field private mButtonBoard:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

.field private mTempMuteBoard:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;


# direct methods
.method public static synthetic $r8$lambda$UAIRgggtKq15CaUuuNZhdYUKi2M(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->lambda$setupDetailView$0()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTile;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTile;Lcom/android/systemui/qs/tiles/SoundModeTile$1;)V
    .locals 0

    .line 341
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V
    .locals 0

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->refreshDetailView()V

    return-void
.end method

.method private synthetic lambda$setupDetailView$0()V
    .locals 0

    .line 391
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->refreshDetailView()V

    return-void
.end method

.method private refreshDetailView()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->getAudioHelper()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode()I

    move-result v0

    .line 440
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mButtonBoard:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->updateAllButtonViews(I)V

    .line 441
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteBoard:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->refreshAllView(I)V

    :cond_1
    return-void
.end method

.method private setupDetailView(Landroid/view/View;)V
    .locals 2

    .line 377
    sget v0, Lcom/android/systemui/R$id;->sound_mode_select_board_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mButtonBoard:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    .line 378
    new-instance v1, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->setBoardToTileCallback(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;)V

    .line 390
    sget v0, Lcom/android/systemui/R$id;->sound_mode_temporary_mute_board_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteBoard:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    .line 391
    new-instance v1, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->setBoardToTileCallback(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;)V

    .line 393
    sget v0, Lcom/android/systemui/R$id;->view_stub_soundmode_tile_volume_mixer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 397
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->soundmode_tile_volume_mixer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 399
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 400
    new-instance v1, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->setVolumeMixerTileCallback(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;)V

    .line 412
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->updateCautionText(Landroid/view/View;)V

    return-void
.end method

.method private updateCautionText(Landroid/view/View;)V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->isSystemSettingAllSoundOff()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 422
    sget v0, Lcom/android/systemui/R$id;->soundmode_caution_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 423
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->access$700(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->volume_mute_all_sounds_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->access$800(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    .line 429
    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 430
    sget v0, Lcom/android/systemui/R$id;->soundmode_caution_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 431
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->access$900(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->quick_settings_sound_mode_detail_mixer_dnd_turned_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 370
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTile;->access$400(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->qs_detail_soundmode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 371
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->setupDetailView(Landroid/view/View;)V

    .line 372
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->refreshDetailView()V

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x138b

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 357
    invoke-static {}, Lcom/android/systemui/qs/tiles/SoundModeTile;->access$300()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 347
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->access$200(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->quick_settings_sound_mode_sound_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isDetailViewAttached()Z
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mButtonBoard:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setToggleState(Z)V
    .locals 0

    return-void
.end method
