.class abstract Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;
.super Lcom/android/systemui/controls/management/adapter/CustomHolder;
.source "CustomControlAdapter.kt"


# instance fields
.field private final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final favorite:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final favoriteCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final icon:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final removed:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final title:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/android/systemui/controls/ui/util/ControlsUtil;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/ui/util/ControlsUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
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

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoriteCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 281
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/CustomHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 279
    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 280
    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->favoriteCallback:Lkotlin/jvm/functions/Function2;

    .line 282
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {p4, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p4

    const-string v0, "itemView.requireViewById(R.id.icon)"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->icon:Landroid/widget/ImageView;

    .line 283
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p4, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p4

    const-string v0, "itemView.requireViewById(R.id.title)"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->title:Landroid/widget/TextView;

    .line 284
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->status:I

    invoke-virtual {p4, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p4

    const-string v0, "itemView.requireViewById(R.id.status)"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->removed:Landroid/widget/TextView;

    .line 288
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p4, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    .line 289
    sget p4, Lcom/android/systemui/R$layout;->controls_checkbox_view:I

    invoke-virtual {p2, p4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 290
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    const-string p4, "null cannot be cast to non-null type android.widget.CheckBox"

    invoke-static {p2, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->favorite:Landroid/widget/CheckBox;

    .line 292
    sget-boolean p2, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "itemView.context"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 293
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->setFoldDelta(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getFavorite$p(Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;)Landroid/widget/CheckBox;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->favorite:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static final synthetic access$getFavoriteCallback$p(Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->favoriteCallback:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method private final getRenderInfo(Landroid/content/ComponentName;I)Lcom/android/systemui/controls/ui/RenderInfo;
    .locals 7

    .line 351
    sget-object v0, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p0, "itemView.context"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->lookup$default(Lcom/android/systemui/controls/ui/RenderInfo$Companion;Landroid/content/Context;Landroid/content/ComponentName;IIILjava/lang/Object;)Lcom/android/systemui/controls/ui/RenderInfo;

    move-result-object p0

    return-object p0
.end method

.method private final setFoldDelta(Landroid/view/View;)V
    .locals 3

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 300
    sget v1, Lcom/android/systemui/R$dimen;->control_custom_base_item_size_fold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 301
    sget-object v2, Lcom/android/systemui/controls/ui/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;

    invoke-virtual {v2, p1, v1, v1}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    .line 304
    sget p1, Lcom/android/systemui/R$dimen;->control_custom_icon_size_fold:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v2, v1, p1, p1}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    .line 308
    sget p1, Lcom/android/systemui/R$dimen;->control_custom_text_size_fold:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 309
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 310
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->removed:Landroid/widget/TextView;

    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public applyRenderInfo(Lcom/android/systemui/controls/ui/RenderInfo;Lcom/android/systemui/controls/ControlInterface;Lcom/android/systemui/controls/CustomControlInterface;)V
    .locals 8
    .param p1    # Lcom/android/systemui/controls/ui/RenderInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ControlInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/CustomControlInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "ri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ci"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cci"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 364
    invoke-interface {p2}, Lcom/android/systemui/controls/ControlInterface;->getCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    const-string v3, "context"

    if-nez v1, :cond_0

    move-object v1, v2

    goto/16 :goto_2

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 367
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_USE_CUSTOM_ICON_WITHOUT_PADDING:Z

    if-eqz v1, :cond_1

    invoke-interface {p3}, Lcom/android/systemui/controls/CustomControlInterface;->getUseCustomIconWithoutPadding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 371
    :cond_1
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_USE_CUSTOM_ICON_WITHOUT_SHADOW_BG:Z

    if-eqz v1, :cond_5

    invoke-interface {p3}, Lcom/android/systemui/controls/CustomControlInterface;->getUseCustomIconWithoutShadowBg()Z

    move-result v1

    if-nez v1, :cond_5

    .line 373
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v4, 0x10

    if-ne v1, v4, :cond_5

    .line 375
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 376
    sget v4, Lcom/android/systemui/R$drawable;->custom_icon_shadow_background:I

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 375
    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 378
    sget-boolean v4, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 379
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->control_custom_icon_size_fold:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 381
    instance-of v5, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_2

    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_2
    move-object v5, v2

    :goto_0
    if-nez v5, :cond_3

    goto :goto_1

    .line 382
    :cond_3
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 383
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 384
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v7, 0x1

    .line 383
    invoke-static {v5, v4, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 382
    invoke-direct {v1, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 390
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 364
    :cond_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    if-nez v1, :cond_7

    .line 394
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    .line 395
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/RenderInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    invoke-interface {p2}, Lcom/android/systemui/controls/ControlInterface;->getDeviceType()I

    move-result p2

    const/16 v4, 0x34

    if-eq p2, v4, :cond_6

    .line 400
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/RenderInfo;->getForeground()I

    move-result p1

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {p2, p1, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 399
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 403
    :cond_6
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 407
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 408
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    .line 410
    invoke-interface {p3}, Lcom/android/systemui/controls/CustomControlInterface;->getCustomColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 407
    invoke-virtual {p1, v0, p2, v1}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->setBackgroundColor(Landroid/content/Context;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/ColorStateList;)V

    .line 413
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_LOTTIE_ICON_ANIMATION:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0, p3}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->updateLottieIcon(Lcom/android/systemui/controls/CustomControlInterface;)V

    :cond_8
    return-void
.end method

.method public bindData(Lcom/android/systemui/controls/management/model/CustomElementWrapper;)V
    .locals 4
    .param p1    # Lcom/android/systemui/controls/management/model/CustomElementWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->resetForReuse()V

    .line 318
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/controls/ControlInterface;

    .line 319
    check-cast p1, Lcom/android/systemui/controls/CustomControlInterface;

    .line 321
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->title:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->setSubtitleText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getFavorite()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->updateFavorite(Z)V

    .line 324
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->removed:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getRemoved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->controls_custom_removed:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 324
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->favorite:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->setContentDescription(Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    .line 332
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;-><init>(Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;Lcom/android/systemui/controls/ControlInterface;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getDeviceType()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->getRenderInfo(Landroid/content/ComponentName;I)Lcom/android/systemui/controls/ui/RenderInfo;

    move-result-object v1

    .line 338
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->applyRenderInfo(Lcom/android/systemui/controls/ui/RenderInfo;Lcom/android/systemui/controls/ControlInterface;Lcom/android/systemui/controls/CustomControlInterface;)V

    return-void
.end method

.method protected final getIcon()Landroid/widget/ImageView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 282
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public resetForReuse()V
    .locals 3

    .line 343
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_USE_CUSTOM_ICON_WITHOUT_PADDING:Z

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->icon:Landroid/widget/ImageView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v2, "itemView.context.resources"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->setIconDefaultPadding(Landroid/widget/ImageView;Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method

.method public setContentDescription(Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/CheckBox;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "favorite"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "title"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 421
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 422
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitleText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateFavorite(Z)V
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->favorite:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public updateLottieIcon(Lcom/android/systemui/controls/CustomControlInterface;)V
    .locals 0
    .param p1    # Lcom/android/systemui/controls/CustomControlInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "cci"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
