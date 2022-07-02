.class final Lcom/android/systemui/controls/management/adapter/PaddingCustomHolder;
.super Lcom/android/systemui/controls/management/adapter/CustomHolder;
.source "CustomControlAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomControlAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomControlAdapter.kt\ncom/android/systemui/controls/management/adapter/PaddingCustomHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,599:1\n1#2:600\n*E\n"
.end annotation


# instance fields
.field private final paddingView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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

    .line 592
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/CustomHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 593
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/PaddingCustomHolder;->paddingView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bindData(Lcom/android/systemui/controls/management/model/CustomElementWrapper;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/management/model/CustomElementWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    check-cast p1, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/PaddingCustomHolder;->paddingView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;->getPadding()I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
