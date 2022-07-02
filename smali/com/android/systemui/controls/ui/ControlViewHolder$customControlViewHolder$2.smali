.class final Lcom/android/systemui/controls/ui/ControlViewHolder$customControlViewHolder$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ControlViewHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/systemui/controls/ui/CustomControlViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$customControlViewHolder$2;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/systemui/controls/ui/CustomControlViewHolder;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 151
    new-instance v10, Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    .line 152
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$customControlViewHolder$2;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    .line 153
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$customControlViewHolder$2;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 154
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$customControlViewHolder$2;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v3

    .line 155
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$customControlViewHolder$2;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getStatus()Landroid/widget/TextView;

    move-result-object v4

    .line 156
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$customControlViewHolder$2;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v5

    .line 157
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$customControlViewHolder$2;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSubtitle()Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    .line 151
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ui/util/ControlsUtil;I)V

    return-object v10
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$customControlViewHolder$2;->invoke()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    move-result-object p0

    return-object p0
.end method
