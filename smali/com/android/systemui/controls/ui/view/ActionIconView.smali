.class public final Lcom/android/systemui/controls/ui/view/ActionIconView;
.super Ljava/lang/Object;
.source "ActionIconView.kt"


# instance fields
.field private actionIcon:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private actionIconProgress:Landroid/widget/ProgressBar;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mainActionButton:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 3
    .param p1    # Landroid/view/ViewStub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "viewStub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget v0, Lcom/android/systemui/R$layout;->controls_action_icon_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 25
    sget v1, Lcom/android/systemui/R$id;->action_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "view.findViewById(R.id.action_icon)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIcon:Landroid/widget/ImageView;

    .line 26
    sget-boolean v2, Lcom/android/systemui/BasicRune;->CONTROLS_AUI:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 27
    :cond_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON_PROGRESS:Z

    if-eqz v1, :cond_1

    .line 28
    sget v1, Lcom/android/systemui/R$id;->action_icon_progress_circle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIconProgress:Landroid/widget/ProgressBar;

    .line 31
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->controls_main_action_button:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.controls_main_action_button)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ActionIconView;->mainActionButton:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getView()Landroid/widget/ImageView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final hide()V
    .locals 1

    .line 47
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final initialize()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON_PROGRESS:Z

    if-eqz v0, :cond_1

    .line 38
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIconProgress:Landroid/widget/ProgressBar;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isShown()Z
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final runMainActonIconProgress()V
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIconProgress:Landroid/widget/ProgressBar;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subtitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIcon:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ActionIconView;->mainActionButton:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 53
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setSize(II)V
    .locals 2

    .line 56
    sget-object v0, Lcom/android/systemui/controls/ui/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    .line 57
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON_PROGRESS:Z

    if-eqz v1, :cond_1

    .line 58
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIconProgress:Landroid/widget/ProgressBar;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final show()V
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
