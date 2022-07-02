.class final Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder$bindData$2;
.super Ljava/lang/Object;
.source "CustomStructureAdapter.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->bindData(Lcom/android/systemui/controls/management/model/StructureElementWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder$bindData$2;->this$0:Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 215
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder$bindData$2;->this$0:Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;

    invoke-static {p1}, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->access$getActionCallback$p(Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;)Ljava/util/function/Consumer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder$bindData$2;->this$0:Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
