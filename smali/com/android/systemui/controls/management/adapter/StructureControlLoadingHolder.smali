.class final Lcom/android/systemui/controls/management/adapter/StructureControlLoadingHolder;
.super Lcom/android/systemui/controls/management/adapter/CustomStructureHolder;
.source "CustomStructureAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomStructureAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomStructureAdapter.kt\ncom/android/systemui/controls/management/adapter/StructureControlLoadingHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,253:1\n1#2:254\n*E\n"
.end annotation


# instance fields
.field private final subtitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/CustomStructureHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 245
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlLoadingHolder;->subtitleView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bindData(Lcom/android/systemui/controls/management/model/StructureElementWrapper;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/management/model/StructureElementWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    check-cast p1, Lcom/android/systemui/controls/management/model/LoadingWrapper;

    .line 249
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlLoadingHolder;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/LoadingWrapper;->getSubtitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
