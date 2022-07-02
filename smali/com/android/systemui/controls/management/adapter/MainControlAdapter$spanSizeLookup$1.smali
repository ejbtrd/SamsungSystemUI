.class public final Lcom/android/systemui/controls/management/adapter/MainControlAdapter$spanSizeLookup$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "MainControlAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/adapter/MainControlAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/google/android/material/appbar/AppBarLayout;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;Landroid/view/View$OnClickListener;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/controls/management/adapter/MainControlAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/management/adapter/MainControlAdapter<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$spanSizeLookup$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 93
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$spanSizeLookup$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$spanSizeLookup$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-static {v0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->access$getSpanManager$p(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)Lcom/android/systemui/controls/ui/util/SpanManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/util/SpanManager;->getSpanInfos()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$spanSizeLookup$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getItemViewType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/ui/util/SpanInfo;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/util/SpanInfo;->getSpan()I

    move-result v1

    :goto_0
    return v1
.end method
