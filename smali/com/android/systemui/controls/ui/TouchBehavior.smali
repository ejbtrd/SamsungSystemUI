.class public final Lcom/android/systemui/controls/ui/TouchBehavior;
.super Ljava/lang/Object;
.source "TouchBehavior.kt"

# interfaces
.implements Lcom/android/systemui/controls/ui/Behavior;
.implements Lcom/android/systemui/controls/ui/CustomBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/TouchBehavior$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/TouchBehavior$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public clipLayer:Landroid/graphics/drawable/Drawable;

.field public control:Landroid/service/controls/Control;

.field public cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field private hasCustomColorInNoTemplate:Z

.field private lastColorOffset:I

.field private statelessTouch:Z

.field public template:Landroid/service/controls/templates/ControlTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/TouchBehavior$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/TouchBehavior$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/TouchBehavior;->Companion:Lcom/android/systemui/controls/ui/TouchBehavior$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getEnabled(Lcom/android/systemui/controls/ui/TouchBehavior;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getEnabled()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getLastColorOffset$p(Lcom/android/systemui/controls/ui/TouchBehavior;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->lastColorOffset:I

    return p0
.end method

.method public static final synthetic access$setStatelessTouch$p(Lcom/android/systemui/controls/ui/TouchBehavior;Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->statelessTouch:Z

    return-void
.end method

.method private final getEnabled()Z
    .locals 1

    .line 46
    iget v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->lastColorOffset:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->statelessTouch:Z

    if-nez v0, :cond_1

    .line 47
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->hasCustomColorInNoTemplate:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
    .locals 8
    .param p1    # Lcom/android/systemui/controls/ui/ControlWithState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cws"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->setControl(Landroid/service/controls/Control;)V

    .line 87
    iput p2, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->lastColorOffset:I

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getControl()Landroid/service/controls/Control;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/controls/Control;->getStatusText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "control.getStatusText()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText$default(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getControl()Landroid/service/controls/Control;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    const-string v0, "control.getControlTemplate()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->setTemplate(Landroid/service/controls/templates/ControlTemplate;)V

    .line 91
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON:Z

    if-eqz p1, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    instance-of p1, p1, Landroid/service/controls/templates/StatelessTemplate;

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->getActionIcon()Lcom/android/systemui/controls/ui/view/ActionIconView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;-><init>(Lcom/android/systemui/controls/ui/TouchBehavior;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/view/ActionIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getControl()Landroid/service/controls/Control;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/controls/Control;->getCustomColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v1

    .line 113
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->hasCustomColorInNoTemplate:Z

    .line 117
    :cond_3
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE:Z

    if-eqz p1, :cond_4

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.RippleDrawable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    goto :goto_2

    .line 120
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 122
    :goto_2
    sget v0, Lcom/android/systemui/R$id;->clip_layer:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "ld.findDrawableByLayerId(R.id.clip_layer)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->setClipLayer(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getClipLayer()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x2710

    :cond_5
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getEnabled()Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core$default(Lcom/android/systemui/controls/ui/ControlViewHolder;ZIZILjava/lang/Object;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON:Z

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->getActionIcon()Lcom/android/systemui/controls/ui/view/ActionIconView;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/controls/ui/view/ActionIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getClipLayer()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "clipLayer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getControl()Landroid/service/controls/Control;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->control:Landroid/service/controls/Control;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "control"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "cvh"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getTemplate()Landroid/service/controls/templates/ControlTemplate;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->template:Landroid/service/controls/templates/ControlTemplate;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "template"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 2
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cvh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->setCvh(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    .line 60
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/TouchBehavior;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setClipLayer(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setControl(Landroid/service/controls/Control;)V
    .locals 1
    .param p1    # Landroid/service/controls/Control;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->control:Landroid/service/controls/Control;

    return-void
.end method

.method public final setCvh(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    return-void
.end method

.method public final setTemplate(Landroid/service/controls/templates/ControlTemplate;)V
    .locals 1
    .param p1    # Landroid/service/controls/templates/ControlTemplate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->template:Landroid/service/controls/templates/ControlTemplate;

    return-void
.end method
