.class final Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;
.super Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;
.source "CustomControlAdapter.kt"


# instance fields
.field private animationView:Lcom/airbnb/lottie/LottieAnimationView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final subtitle:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/util/ControlsUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsUtil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoriteCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    sget v0, Lcom/android/systemui/R$id;->right_top_viewstub:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;-><init>(Landroid/view/View;ILcom/android/systemui/controls/ui/util/ControlsUtil;Lkotlin/jvm/functions/Function2;)V

    .line 427
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->view:Landroid/view/View;

    .line 428
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 433
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->subtitle:I

    invoke-virtual {p3, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "itemView.requireViewById(R.id.subtitle)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->subtitle:Landroid/widget/TextView;

    .line 440
    sget-boolean p3, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "itemView.context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 441
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->setFoldDelta(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final setFoldDelta(Landroid/view/View;)V
    .locals 1

    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 448
    sget v0, Lcom/android/systemui/R$dimen;->control_custom_text_size_fold:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 449
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->subtitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public resetForReuse()V
    .locals 2

    .line 455
    invoke-super {p0}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->resetForReuse()V

    .line 457
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    .line 458
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    .line 459
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 460
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 463
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_LOTTIE_ICON_ANIMATION:Z

    if-eqz v0, :cond_1

    .line 464
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 465
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setContentDescription(Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .locals 2
    .param p1    # Landroid/widget/CheckBox;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "favorite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 494
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 495
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateLottieIcon(Lcom/android/systemui/controls/CustomControlInterface;)V
    .locals 11
    .param p1    # Lcom/android/systemui/controls/CustomControlInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cci"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 479
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "itemView.context"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v3

    .line 481
    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->view:Landroid/view/View;

    .line 482
    iget-object v5, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 483
    invoke-interface {p1}, Lcom/android/systemui/controls/CustomControlInterface;->getCustomIconAnimationJson()Ljava/lang/String;

    move-result-object v6

    .line 484
    invoke-interface {p1}, Lcom/android/systemui/controls/CustomControlInterface;->getCustomIconAnimationJsonCache()Ljava/lang/String;

    move-result-object v7

    .line 485
    invoke-interface {p1}, Lcom/android/systemui/controls/CustomControlInterface;->getCustomIconAnimationStartFrame()I

    move-result v8

    .line 486
    invoke-interface {p1}, Lcom/android/systemui/controls/CustomControlInterface;->getCustomIconAnimationEndFrame()I

    move-result v9

    .line 487
    invoke-interface {p1}, Lcom/android/systemui/controls/CustomControlInterface;->getCustomIconAnimationRepeatCount()I

    move-result v10

    .line 478
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->updateLottieIcon(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;Ljava/lang/String;III)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method
