.class public final Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$spanSizeLookup$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "CustomControlAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$spanSizeLookup$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;

    .line 91
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$spanSizeLookup$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;

    invoke-static {v0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->access$getSpanManager$p(Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;)Lcom/android/systemui/controls/ui/util/SpanManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/util/SpanManager;->getSpanInfos()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$spanSizeLookup$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->getItemViewType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/ui/util/SpanInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/util/SpanInfo;->getSpan()I

    move-result p0

    :goto_0
    return p0
.end method
