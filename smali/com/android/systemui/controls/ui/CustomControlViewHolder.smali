.class public final Lcom/android/systemui/controls/ui/CustomControlViewHolder;
.super Ljava/lang/Object;
.source "CustomControlViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomControlViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomControlViewHolder.kt\ncom/android/systemui/controls/ui/CustomControlViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,400:1\n1#2:401\n*E\n"
.end annotation


# instance fields
.field private actionIcon:Lcom/android/systemui/controls/ui/view/ActionIconView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private animationView:Lcom/airbnb/lottie/LottieAnimationView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private batteryLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private customBehavior:Lcom/android/systemui/controls/ui/CustomBehavior;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final icon:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layout:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private layoutType:I

.field private final status:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private statusIcon:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final subtitle:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final title:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ui/util/ControlsUtil;I)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/controls/ui/util/ControlsUtil;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subtitle"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->icon:Landroid/widget/ImageView;

    .line 28
    iput-object p4, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->status:Landroid/widget/TextView;

    .line 29
    iput-object p5, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->title:Landroid/widget/TextView;

    .line 30
    iput-object p6, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->subtitle:Landroid/widget/TextView;

    .line 31
    iput-object p7, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    .line 32
    iput-object p8, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 33
    iput p9, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layoutType:I

    return-void
.end method

.method private final isCustomBehavior(ILandroid/service/controls/templates/ControlTemplate;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x32

    if-ne p3, v2, :cond_1

    goto :goto_1

    .line 316
    :cond_1
    sget-object v2, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 317
    :cond_2
    instance-of v2, p2, Landroid/service/controls/templates/ToggleTemplate;

    if-eqz v2, :cond_3

    :goto_0
    move v0, v1

    goto :goto_1

    .line 318
    :cond_3
    instance-of v2, p2, Landroid/service/controls/templates/StatelessTemplate;

    if-eqz v2, :cond_4

    goto :goto_0

    .line 319
    :cond_4
    instance-of v2, p2, Landroid/service/controls/templates/ToggleRangeTemplate;

    if-eqz v2, :cond_5

    goto :goto_0

    .line 321
    :cond_5
    instance-of v1, p2, Landroid/service/controls/templates/TemperatureControlTemplate;

    if-eqz v1, :cond_6

    .line 323
    check-cast p2, Landroid/service/controls/templates/TemperatureControlTemplate;

    invoke-virtual {p2}, Landroid/service/controls/templates/TemperatureControlTemplate;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p2

    const-string/jumbo v0, "template.template"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->isCustomBehavior(ILandroid/service/controls/templates/ControlTemplate;I)Z

    move-result v0

    :cond_6
    :goto_1
    return v0
.end method

.method private final isSmallLayoutType()Z
    .locals 2

    .line 222
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layoutType:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final setFoldDelta(Landroid/view/View;)V
    .locals 5

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 98
    sget v0, Lcom/android/systemui/R$dimen;->control_custom_icon_size_fold:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 99
    sget v1, Lcom/android/systemui/R$dimen;->control_custom_text_size_fold:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 101
    sget-object v2, Lcom/android/systemui/controls/ui/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v0, v0}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    .line 102
    iget v0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layoutType:I

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    goto :goto_3

    .line 105
    :cond_0
    sget v0, Lcom/android/systemui/R$dimen;->control_battery_icon_size_fold:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 107
    sget v4, Lcom/android/systemui/R$dimen;->control_battery_gauge_font_size_fold:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 108
    iget-object v4, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v4, v0, v0}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    .line 113
    :cond_2
    sget v0, Lcom/android/systemui/R$dimen;->control_action_icon_size_fold:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 115
    sget v4, Lcom/android/systemui/R$dimen;->control_status_icon_size_fold:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 116
    sget-boolean v4, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON:Z

    if-eqz v4, :cond_4

    .line 117
    iget-object v4, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ActionIconView;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v0, v0}, Lcom/android/systemui/controls/ui/view/ActionIconView;->setSize(II)V

    .line 119
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v0, p1, p1}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    .line 120
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 124
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p1, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 125
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private final showStatusIcon(Landroid/service/controls/templates/ControlTemplate;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 353
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 357
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 360
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final updateBatteryIcon(ZLandroid/service/controls/Control;)V
    .locals 1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    if-nez p2, :cond_0

    :goto_0
    move-object p2, p1

    goto :goto_1

    .line 343
    :cond_0
    invoke-virtual {p2}, Landroid/service/controls/Control;->getCustomStatusIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->getStatusIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-nez p2, :cond_4

    .line 344
    iget-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 345
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->batteryLayout:Landroid/widget/LinearLayout;

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 347
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->batteryLayout:Landroid/widget/LinearLayout;

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private final updateCustomIconBackground(Landroid/service/controls/Control;Z)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_2

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/service/controls/Control;->getUseCustomIconWithoutShadowBg()Z

    move-result p1

    if-nez p1, :cond_4

    .line 234
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x10

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_4

    .line 236
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 237
    sget p2, Lcom/android/systemui/R$drawable;->custom_icon_shadow_background:I

    .line 238
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 236
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 240
    sget-boolean p2, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->isFoldDelta()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 242
    iget-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->control_custom_icon_size_fold:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 243
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 244
    :cond_2
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 245
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 246
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, p2, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 244
    invoke-direct {p1, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 250
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private final updateCustomIconPadding(Landroid/service/controls/Control;)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p1}, Landroid/service/controls/Control;->getUseCustomIconWithoutPadding()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->icon:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final updateIconAlpha(Landroid/service/controls/Control;Z)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_1

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    .line 259
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$dimen;->controls_custom_icon_alpha_on:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    .line 261
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$dimen;->controls_custom_icon_alpha_off:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    .line 258
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method private final updateLottieIcon(Landroid/service/controls/Control;)V
    .locals 11

    .line 367
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->isSmallLayoutType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    if-nez v1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 371
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    .line 372
    iget-object v3, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->icon:Landroid/widget/ImageView;

    .line 373
    iget-object v4, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 374
    iget-object v5, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 375
    invoke-virtual {p1}, Landroid/service/controls/Control;->getCustomIconAnimationJson()Ljava/lang/String;

    move-result-object v6

    const-string v0, "customIconAnimationJson"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Landroid/service/controls/Control;->getCustomIconAnimationJsonCache()Ljava/lang/String;

    move-result-object v7

    const-string v0, "customIconAnimationJsonCache"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Landroid/service/controls/Control;->getCustomIconAnimationStartFrame()I

    move-result v8

    .line 378
    invoke-virtual {p1}, Landroid/service/controls/Control;->getCustomIconAnimationEndFrame()I

    move-result v9

    .line 379
    invoke-virtual {p1}, Landroid/service/controls/Control;->getCustomIconAnimationRepeatCount()I

    move-result v10

    .line 370
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->updateLottieIcon(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;Ljava/lang/String;III)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    :goto_1
    return-void
.end method

.method private final updateMainActionIcon(Landroid/service/controls/Control;Landroid/graphics/drawable/Drawable;ZILandroid/service/controls/templates/ControlTemplate;I[I[I)V
    .locals 1

    .line 294
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->isSmallLayoutType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ActionIconView;

    if-nez v0, :cond_1

    goto :goto_1

    .line 297
    :cond_1
    invoke-direct {p0, p4, p5, p6}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->isCustomBehavior(ILandroid/service/controls/templates/ControlTemplate;I)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 298
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ActionIconView;->getView()Landroid/widget/ImageView;

    move-result-object p4

    const/4 p5, 0x0

    if-nez p1, :cond_2

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p1}, Landroid/service/controls/Control;->getActionIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 300
    :cond_3
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 299
    sget-object p5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez p5, :cond_4

    .line 301
    invoke-static {p3, p7, p8, p4, p2}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->updateMainActionIcon$setImageViewDrawable(Z[I[ILandroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 303
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string/jumbo p2, "title.text"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    const-string/jumbo p2, "subtitle.text"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/controls/ui/view/ActionIconView;->setContentDescription(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 304
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ActionIconView;->show()V

    goto :goto_1

    .line 306
    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ActionIconView;->hide()V

    :goto_1
    return-void
.end method

.method private static final updateMainActionIcon$setImageViewDrawable(Z[I[ILandroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    instance-of v0, p4, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_3

    .line 283
    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_1

    .line 284
    :cond_0
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    :goto_0
    const/4 p0, 0x1

    .line 287
    invoke-virtual {p3, p1, p0}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_1

    .line 289
    :cond_3
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method private final updateStatusIcon(ZLandroid/service/controls/Control;Landroid/service/controls/templates/ControlTemplate;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 336
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->isSmallLayoutType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->updateBatteryIcon(ZLandroid/service/controls/Control;)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->showStatusIcon(Landroid/service/controls/templates/ControlTemplate;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private final updateStatusTextColor(Landroid/service/controls/Control;)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p1}, Landroid/service/controls/Control;->getStatusTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getActionIcon()Lcom/android/systemui/controls/ui/view/ActionIconView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 38
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ActionIconView;

    return-object p0
.end method

.method public final getCustomControlActionCoordinator()Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 31
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    return-object p0
.end method

.method public final getLayoutType()I
    .locals 0

    .line 33
    iget p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layoutType:I

    return p0
.end method

.method public final getStatusIcon()Landroid/widget/ImageView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final hasActionIcon()Z
    .locals 1

    .line 385
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ActionIconView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/view/ActionIconView;->isShown()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final initClipLayerAndBaseLayer()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Landroid/graphics/drawable/ClipDrawable;",
            "Landroid/graphics/drawable/GradientDrawable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 84
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 85
    sget v2, Lcom/android/systemui/R$drawable;->control_custom_background_ripple:I

    .line 86
    iget-object v3, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 84
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.RippleDrawable"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    .line 89
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 90
    sget v0, Lcom/android/systemui/R$id;->clip_layer:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.ClipDrawable"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    .line 91
    sget v1, Lcom/android/systemui/R$id;->background:I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    .line 90
    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final initialize(Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ui/util/ControlsUtil;I)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/util/ControlsUtil;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 54
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    .line 55
    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 56
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->battery_icon:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->setStatusIcon(Landroid/widget/ImageView;)V

    .line 61
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->battery_layout:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->setBatteryLayout(Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 64
    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON:Z

    if-eqz p1, :cond_1

    .line 66
    new-instance p1, Lcom/android/systemui/controls/ui/view/ActionIconView;

    iget-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layout:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->right_top_viewstub:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "layout.requireViewById<ViewStub>(R.id.right_top_viewstub)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewStub;

    invoke-direct {p1, p2}, Lcom/android/systemui/controls/ui/view/ActionIconView;-><init>(Landroid/view/ViewStub;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->setActionIcon(Lcom/android/systemui/controls/ui/view/ActionIconView;)V

    .line 68
    :cond_1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_STATUS:Z

    if-eqz p1, :cond_2

    .line 69
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->status_icon_viewstub:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 70
    sget p2, Lcom/android/systemui/R$layout;->controls_status_icon_view:I

    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 71
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->setStatusIcon(Landroid/widget/ImageView;)V

    .line 76
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 57
    iput p3, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layoutType:I

    .line 79
    :cond_3
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->isFoldDelta()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->setFoldDelta(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public final isFoldDelta()Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final resetForControlViewHolderReUse(Lcom/android/systemui/controls/ui/Behavior;)Lcom/android/systemui/controls/ui/Behavior;
    .locals 4
    .param p1    # Lcom/android/systemui/controls/ui/Behavior;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->icon:Landroid/widget/ImageView;

    .line 130
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_USE_CUSTOM_ICON_WITHOUT_PADDING:Z

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "context.resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->setIconDefaultPadding(Landroid/widget/ImageView;Landroid/content/res/Resources;)V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    .line 134
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-array v3, v1, [I

    .line 136
    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 137
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 141
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ActionIconView;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ActionIconView;->initialize()V

    .line 142
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_STATUS:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    :cond_5
    :goto_2
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_LOTTIE_ICON_ANIMATION:Z

    if-eqz v0, :cond_7

    .line 145
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const/16 v1, 0x8

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 151
    :cond_7
    :goto_3
    instance-of v0, p1, Lcom/android/systemui/controls/ui/TouchBehavior;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v0

    instance-of v0, v0, Landroid/service/controls/templates/StatelessTemplate;

    if-nez v0, :cond_b

    .line 152
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->customBehavior:Lcom/android/systemui/controls/ui/CustomBehavior;

    if-eqz p1, :cond_a

    if-nez p1, :cond_9

    goto :goto_4

    .line 153
    :cond_9
    invoke-interface {p1}, Lcom/android/systemui/controls/ui/CustomBehavior;->dispose()V

    .line 154
    :goto_4
    iput-object v2, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->customBehavior:Lcom/android/systemui/controls/ui/CustomBehavior;

    .line 157
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 158
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object p1, v2

    :cond_b
    return-object p1
.end method

.method public final setActionIcon(Lcom/android/systemui/controls/ui/view/ActionIconView;)V
    .locals 0
    .param p1    # Lcom/android/systemui/controls/ui/view/ActionIconView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 38
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ActionIconView;

    return-void
.end method

.method public final setBatteryLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 47
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->batteryLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final setCustomBehavior(Lcom/android/systemui/controls/ui/Behavior;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/Behavior;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 168
    instance-of v0, p1, Lcom/android/systemui/controls/ui/CustomBehavior;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/controls/ui/CustomBehavior;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->customBehavior:Lcom/android/systemui/controls/ui/CustomBehavior;

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 173
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final setStatusIcon(Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 41
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public final updateDimState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 393
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->controls_card_dim_alpha:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 397
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public final updateStatusRow(Landroid/service/controls/Control;ZLandroid/graphics/drawable/Drawable;ILandroid/service/controls/templates/ControlTemplate;I[I[ILandroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p1    # Landroid/service/controls/Control;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/service/controls/templates/ControlTemplate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v9, p5

    const-string v0, "controlTemplate"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enabledAttr"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disabledAttr"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    sget-boolean v10, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_STATUS:Z

    if-eqz v10, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->updateStatusTextColor(Landroid/service/controls/Control;)V

    .line 188
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_USE_CUSTOM_ICON_WITHOUT_PADDING:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->updateCustomIconPadding(Landroid/service/controls/Control;)V

    .line 189
    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_USE_CUSTOM_ICON_WITHOUT_SHADOW_BG:Z

    if-eqz v0, :cond_2

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->updateCustomIconBackground(Landroid/service/controls/Control;Z)V

    .line 192
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->updateIconAlpha(Landroid/service/controls/Control;Z)V

    .line 193
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON:Z

    if-eqz v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 194
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->updateMainActionIcon(Landroid/service/controls/Control;Landroid/graphics/drawable/Drawable;ZILandroid/service/controls/templates/ControlTemplate;I[I[I)V

    :cond_3
    move-object v0, p0

    move-object v1, p1

    if-eqz v10, :cond_4

    move v2, p2

    move-object/from16 v3, p9

    .line 206
    invoke-direct {p0, p2, p1, v9, v3}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->updateStatusIcon(ZLandroid/service/controls/Control;Landroid/service/controls/templates/ControlTemplate;Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_4
    sget-boolean v2, Lcom/android/systemui/BasicRune;->CONTROLS_LOTTIE_ICON_ANIMATION:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->updateLottieIcon(Landroid/service/controls/Control;)V

    :cond_5
    return-void
.end method
