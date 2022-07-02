.class final Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;
.super Lcom/android/systemui/controls/management/adapter/CustomStructureHolder;
.source "CustomStructureAdapter.kt"


# instance fields
.field private final actionCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final alternativeDescription:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final emptyStructureName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final reorder:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final title:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/CustomStructureHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 190
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->view:Landroid/view/View;

    .line 191
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->actionCallback:Ljava/util/function/Consumer;

    .line 193
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->reorder_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "itemView.requireViewById(R.id.reorder_title)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->title:Landroid/widget/TextView;

    .line 194
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->reorder_structure:I

    invoke-virtual {p2, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "itemView.requireViewById(R.id.reorder_structure)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->reorder:Landroid/widget/ImageView;

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$string;->controls_favorite_other_structure_zone_header:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "view.context.resources.getString(R.string.controls_favorite_other_structure_zone_header)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->emptyStructureName:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 198
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 199
    sget p2, Lcom/android/systemui/R$string;->controls_and_hold_to:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(R.string.controls_and_hold_to)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 200
    sget v2, Lcom/android/systemui/R$string;->controls_double_tap:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 201
    sget v2, Lcom/android/systemui/R$string;->controls_reorder:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 198
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->alternativeDescription:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getActionCallback$p(Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;)Ljava/util/function/Consumer;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->actionCallback:Ljava/util/function/Consumer;

    return-object p0
.end method


# virtual methods
.method public bindData(Lcom/android/systemui/controls/management/model/StructureElementWrapper;)V
    .locals 2
    .param p1    # Lcom/android/systemui/controls/management/model/StructureElementWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    check-cast p1, Lcom/android/systemui/controls/management/model/ReorderWrapper;

    .line 207
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/ReorderWrapper;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->emptyStructureName:Ljava/lang/String;

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/ReorderWrapper;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    .line 207
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->reorder:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder$bindData$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder$bindData$2;-><init>(Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->view:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->alternativeDescription:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
