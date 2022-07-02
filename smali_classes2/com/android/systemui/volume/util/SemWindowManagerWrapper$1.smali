.class Lcom/android/systemui/volume/util/SemWindowManagerWrapper$1;
.super Ljava/lang/Object;
.source "SemWindowManagerWrapper.java"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/util/SemWindowManagerWrapper;->registerFoldStateListener(Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

.field final synthetic val$folderState:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/util/SemWindowManagerWrapper;Ljava/util/function/Consumer;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/android/systemui/volume/util/SemWindowManagerWrapper$1;->this$0:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    iput-object p2, p0, Lcom/android/systemui/volume/util/SemWindowManagerWrapper$1;->val$folderState:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFoldStateChanged(Z)V
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/volume/util/SemWindowManagerWrapper$1;->val$folderState:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onTableModeChanged(Z)V
    .locals 0

    return-void
.end method
