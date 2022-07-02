.class public final Lcom/android/systemui/media/SecPlayerViewHolder;
.super Ljava/lang/Object;
.source "SecPlayerViewHolder.kt"


# instance fields
.field private final LIGHTNESS_TEXT_DIFFERENCE_DARK:I

.field private final LIGHTNESS_TEXT_DIFFERENCE_LIGHT:I

.field private final action0_collapsed:Landroid/widget/ImageButton;

.field private final action0_expanded:Landroid/widget/ImageButton;

.field private final action1_collapsed:Landroid/widget/ImageButton;

.field private final action1_expanded:Landroid/widget/ImageButton;

.field private final action2_collapsed:Landroid/widget/ImageButton;

.field private final action2_expanded:Landroid/widget/ImageButton;

.field private final action3_collapsed:Landroid/widget/ImageButton;

.field private final action3_expanded:Landroid/widget/ImageButton;

.field private final action4_collapsed:Landroid/widget/ImageButton;

.field private final action4_expanded:Landroid/widget/ImageButton;

.field private albumView:Landroid/widget/ImageView;

.field private appIcon:Landroid/widget/ImageView;

.field private appName:Landroid/widget/TextView;

.field private artistText:Landroid/widget/TextView;

.field private bgColor:I

.field private final cancelText:Landroid/widget/TextView;

.field private final collapseActionButtonsContainer:Landroid/widget/LinearLayout;

.field private final elapsedTimeView:Landroid/widget/TextView;

.field private final expandActionButtonsContainer:Landroid/widget/LinearLayout;

.field private expandIcon:Landroid/widget/ImageView;

.field private fgColor:I

.field private header:Landroid/widget/LinearLayout;

.field private headerColor:I

.field private final mediaOutputText:Landroid/widget/TextView;

.field private final options:Landroid/view/View;

.field private final optionsAppIcon:Landroid/widget/ImageView;

.field private final optionsAppTitle:Landroid/widget/TextView;

.field private player:Landroid/widget/LinearLayout;

.field private playerView:Landroid/widget/LinearLayout;

.field private primaryColor:I

.field private final progressInfo:Landroid/widget/LinearLayout;

.field private final progressTimes:Landroid/view/ViewGroup;

.field private final remove:Landroid/view/View;

.field private final removeText:Landroid/widget/TextView;

.field private seamlessText:Landroid/widget/TextView;

.field private secondaryColor:I

.field private final seekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field private final settingsText:Landroid/widget/TextView;

.field private titleArtistActionButtonsView:Landroid/widget/FrameLayout;

.field private titleArtistView:Landroid/widget/LinearLayout;

.field private titleText:Landroid/widget/TextView;

.field private final totalTimeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget v0, Lcom/android/systemui/R$id;->sec_qs_media_controls:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/widget/LinearLayout;

    .line 39
    sget v0, Lcom/android/systemui/R$id;->sec_qs_media_player:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->player:Landroid/widget/LinearLayout;

    .line 42
    sget v0, Lcom/android/systemui/R$id;->media_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->header:Landroid/widget/LinearLayout;

    .line 43
    sget v0, Lcom/android/systemui/R$id;->sec_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 44
    sget v0, Lcom/android/systemui/R$id;->sec_app_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->appName:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/android/systemui/R$id;->media_expansion_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandIcon:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcom/android/systemui/R$id;->sec_album_art:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->albumView:Landroid/widget/ImageView;

    .line 47
    sget v0, Lcom/android/systemui/R$id;->sec_header_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->titleText:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/android/systemui/R$id;->sec_header_artist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->artistText:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/android/systemui/R$id;->sec_title_artist_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->titleArtistView:Landroid/widget/LinearLayout;

    .line 50
    sget v0, Lcom/android/systemui/R$id;->sec_title_artist_action_buttons_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->titleArtistActionButtonsView:Landroid/widget/FrameLayout;

    .line 54
    sget v0, Lcom/android/systemui/R$id;->sec_device_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seamlessText:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/android/systemui/R$id;->sec_media_output_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->mediaOutputText:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/android/systemui/R$id;->sec_progress_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->progressInfo:Landroid/widget/LinearLayout;

    .line 59
    sget v0, Lcom/android/systemui/R$id;->sec_media_progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 60
    sget v0, Lcom/android/systemui/R$id;->sec_notification_media_progress_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->progressTimes:Landroid/view/ViewGroup;

    .line 61
    sget v0, Lcom/android/systemui/R$id;->sec_media_elapsed_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/android/systemui/R$id;->sec_media_total_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->totalTimeView:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/android/systemui/R$id;->action_buttons_expanded:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandActionButtonsContainer:Landroid/widget/LinearLayout;

    .line 66
    sget v1, Lcom/android/systemui/R$id;->sec_action0:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action0_expanded:Landroid/widget/ImageButton;

    .line 67
    sget v2, Lcom/android/systemui/R$id;->sec_action1:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action1_expanded:Landroid/widget/ImageButton;

    .line 68
    sget v3, Lcom/android/systemui/R$id;->sec_action2:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action2_expanded:Landroid/widget/ImageButton;

    .line 69
    sget v4, Lcom/android/systemui/R$id;->sec_action3:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action3_expanded:Landroid/widget/ImageButton;

    .line 70
    sget v5, Lcom/android/systemui/R$id;->sec_action4:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action4_expanded:Landroid/widget/ImageButton;

    .line 72
    sget v0, Lcom/android/systemui/R$id;->action_buttons_collapsed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->collapseActionButtonsContainer:Landroid/widget/LinearLayout;

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action0_collapsed:Landroid/widget/ImageButton;

    .line 74
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action1_collapsed:Landroid/widget/ImageButton;

    .line 75
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action2_collapsed:Landroid/widget/ImageButton;

    .line 76
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action3_collapsed:Landroid/widget/ImageButton;

    .line 77
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action4_collapsed:Landroid/widget/ImageButton;

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->fgColor:I

    .line 83
    iput v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->primaryColor:I

    .line 86
    iput v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->secondaryColor:I

    .line 88
    iput v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->headerColor:I

    .line 91
    iput v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->bgColor:I

    const/16 v0, 0x14

    .line 94
    iput v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->LIGHTNESS_TEXT_DIFFERENCE_LIGHT:I

    const/16 v0, -0xa

    .line 97
    iput v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->LIGHTNESS_TEXT_DIFFERENCE_DARK:I

    .line 126
    sget v0, Lcom/android/systemui/R$id;->qs_media_controls_options:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->options:Landroid/view/View;

    .line 127
    sget v0, Lcom/android/systemui/R$id;->sec_option_app_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->optionsAppIcon:Landroid/widget/ImageView;

    .line 128
    sget v0, Lcom/android/systemui/R$id;->sec_option_app_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->optionsAppTitle:Landroid/widget/TextView;

    .line 129
    sget v0, Lcom/android/systemui/R$id;->sec_option_remove_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->remove:Landroid/view/View;

    .line 130
    sget v0, Lcom/android/systemui/R$id;->sec_remove_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->removeText:Landroid/widget/TextView;

    .line 131
    sget v0, Lcom/android/systemui/R$id;->sec_settings_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->settingsText:Landroid/widget/TextView;

    .line 132
    sget v0, Lcom/android/systemui/R$id;->sec_cancel_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->cancelText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getAction(IZ)Landroid/widget/ImageButton;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p2, :cond_5

    .line 102
    sget p2, Lcom/android/systemui/R$id;->sec_action0:I

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action0_expanded:Landroid/widget/ImageButton;

    const-string p1, "action0_expanded"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    sget p2, Lcom/android/systemui/R$id;->sec_action1:I

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action1_expanded:Landroid/widget/ImageButton;

    const-string p1, "action1_expanded"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    sget p2, Lcom/android/systemui/R$id;->sec_action2:I

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action2_expanded:Landroid/widget/ImageButton;

    const-string p1, "action2_expanded"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    sget p2, Lcom/android/systemui/R$id;->sec_action3:I

    if-ne p1, p2, :cond_3

    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action3_expanded:Landroid/widget/ImageButton;

    const-string p1, "action3_expanded"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_3
    sget p2, Lcom/android/systemui/R$id;->sec_action4:I

    if-ne p1, p2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action4_expanded:Landroid/widget/ImageButton;

    const-string p1, "action4_expanded"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    .line 108
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 113
    :cond_5
    sget p2, Lcom/android/systemui/R$id;->sec_action0:I

    if-ne p1, p2, :cond_6

    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action0_collapsed:Landroid/widget/ImageButton;

    const-string p1, "action0_collapsed"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_6
    sget p2, Lcom/android/systemui/R$id;->sec_action1:I

    if-ne p1, p2, :cond_7

    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action1_collapsed:Landroid/widget/ImageButton;

    const-string p1, "action1_collapsed"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_7
    sget p2, Lcom/android/systemui/R$id;->sec_action2:I

    if-ne p1, p2, :cond_8

    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action2_collapsed:Landroid/widget/ImageButton;

    const-string p1, "action2_collapsed"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 116
    :cond_8
    sget p2, Lcom/android/systemui/R$id;->sec_action3:I

    if-ne p1, p2, :cond_9

    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action3_collapsed:Landroid/widget/ImageButton;

    const-string p1, "action3_collapsed"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_9
    sget p2, Lcom/android/systemui/R$id;->sec_action4:I

    if-ne p1, p2, :cond_a

    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action4_collapsed:Landroid/widget/ImageButton;

    const-string p1, "action4_collapsed"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0

    .line 119
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final getAlbumView()Landroid/widget/ImageView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->albumView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getAppIcon()Landroid/widget/ImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->appIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getAppName()Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->appName:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getArtistText()Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->artistText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getCancelText()Landroid/widget/TextView;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->cancelText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getCollapseActionButtonsContainer()Landroid/widget/LinearLayout;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->collapseActionButtonsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public final getElapsedTimeView()Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getExpandActionButtonsContainer()Landroid/widget/LinearLayout;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandActionButtonsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public final getExpandIcon()Landroid/widget/ImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getHeader()Landroid/widget/LinearLayout;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->header:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public final getMediaOutputText()Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->mediaOutputText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getOptions()Landroid/view/View;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->options:Landroid/view/View;

    return-object p0
.end method

.method public final getOptionsAppIcon()Landroid/widget/ImageView;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->optionsAppIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getOptionsAppTitle()Landroid/widget/TextView;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->optionsAppTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getPlayer()Landroid/widget/LinearLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->player:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public final getPlayerView()Landroid/widget/LinearLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public final getProgressInfo()Landroid/widget/LinearLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->progressInfo:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public final getRemoveText()Landroid/widget/TextView;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->removeText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getSeamlessText()Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seamlessText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    return-object p0
.end method

.method public final getSettingsText()Landroid/widget/TextView;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->settingsText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTitleArtistActionButtonsView()Landroid/widget/FrameLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->titleArtistActionButtonsView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final getTitleArtistView()Landroid/widget/LinearLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->titleArtistView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public final getTitleText()Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->titleText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTotalTimeView()Landroid/widget/TextView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->totalTimeView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final updateColor(II)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->artistText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seamlessText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->mediaOutputText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    const/16 v0, 0x80

    .line 236
    invoke-virtual {p2, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 237
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->totalTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 239
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 240
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    const/16 v0, 0x4c

    .line 242
    invoke-virtual {p2, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 243
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 246
    iget-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action0_expanded:Landroid/widget/ImageButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 247
    iget-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action1_expanded:Landroid/widget/ImageButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 248
    iget-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action2_expanded:Landroid/widget/ImageButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 249
    iget-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action3_expanded:Landroid/widget/ImageButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 250
    iget-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action4_expanded:Landroid/widget/ImageButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 252
    iget-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action0_collapsed:Landroid/widget/ImageButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 253
    iget-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action1_collapsed:Landroid/widget/ImageButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 254
    iget-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action2_collapsed:Landroid/widget/ImageButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 255
    iget-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action3_collapsed:Landroid/widget/ImageButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 256
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->action4_collapsed:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    return-void
.end method
