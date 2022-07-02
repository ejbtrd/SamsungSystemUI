.class final Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;
.super Lcom/android/systemui/controls/management/adapter/CustomHolder;
.source "CustomControlAdapter.kt"


# instance fields
.field private final accessibilityDelegate:Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$accessibilityDelegate$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private displayName:Ljava/lang/CharSequence;

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

.field private final selectAllItems:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final structureAll:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final structureAllLayout:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private structureName:Ljava/lang/CharSequence;

.field private final title:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
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

    const-string v0, "favoriteCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 519
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/CustomHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 518
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->favoriteCallback:Lkotlin/jvm/functions/Function2;

    .line 520
    sget p2, Lcom/android/systemui/R$id;->header_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.requireViewById(R.id.header_title)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->title:Landroid/widget/TextView;

    .line 521
    sget p2, Lcom/android/systemui/R$id;->check_all_structure:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.requireViewById(R.id.check_all_structure)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureAll:Landroid/widget/CheckBox;

    .line 523
    sget p2, Lcom/android/systemui/R$id;->check_all_structure_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.requireViewById(R.id.check_all_structure_layout)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureAllLayout:Landroid/widget/FrameLayout;

    .line 526
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->controls_select_all_items:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "view.context.getString(R.string.controls_select_all_items)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->selectAllItems:Ljava/lang/String;

    .line 528
    new-instance v0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$accessibilityDelegate$1;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$accessibilityDelegate$1;-><init>(Landroid/view/View;Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;)V

    iput-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->accessibilityDelegate:Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$accessibilityDelegate$1;

    const/4 v1, 0x1

    .line 549
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 p1, 0x2

    .line 550
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 552
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public static final synthetic access$getFavoriteCallback$p(Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->favoriteCallback:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getStructureAll$p(Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;)Landroid/widget/CheckBox;
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureAll:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static final synthetic access$getStructureAllLayout$p(Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureAllLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static final synthetic access$getStructureName$p(Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;)Ljava/lang/CharSequence;
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final setContentDescription()V
    .locals 3

    .line 584
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureAll:Landroid/widget/CheckBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->selectAllItems:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->displayName:Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p0, "displayName"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public bindData(Lcom/android/systemui/controls/management/model/CustomElementWrapper;)V
    .locals 3
    .param p1    # Lcom/android/systemui/controls/management/model/CustomElementWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    check-cast p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    .line 557
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->getStructureName()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureName:Ljava/lang/CharSequence;

    .line 558
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->displayName:Ljava/lang/CharSequence;

    .line 559
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 560
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->getNeedStructureName()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 561
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 562
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 563
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->controls_custom_management_row_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 562
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 565
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 566
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 569
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->displayName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureAll:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->getFavorite()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 573
    invoke-direct {p0}, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->setContentDescription()V

    .line 575
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureAllLayout:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$bindData$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$bindData$2;-><init>(Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const-string p0, "displayName"

    .line 569
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public updateFavorite(Z)V
    .locals 0

    .line 588
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureAll:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
