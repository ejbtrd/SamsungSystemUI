.class Lcom/android/systemui/qs/bar/BarController$2;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Lcom/android/systemui/qs/bar/BarItem$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/BarController;->setCallback(Lcom/android/systemui/qs/bar/BarController$BarItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/BarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/BarController;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController$2;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBarHeightChanged()V
    .locals 2

    const-string v0, "BarController"

    const-string v1, "onBarHeightChanged"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController$2;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/BarController;->access$900(Lcom/android/systemui/qs/bar/BarController;)Lcom/android/systemui/qs/bar/BarController$BarItemCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$2;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/BarController;->access$900(Lcom/android/systemui/qs/bar/BarController;)Lcom/android/systemui/qs/bar/BarController$BarItemCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/qs/bar/BarController$BarItemCallback;->onBarHeightChanged()V

    :cond_0
    return-void
.end method

.method public onBarVisibilityChanged()V
    .locals 2

    const-string v0, "BarController"

    const-string v1, "onBarVisibilityChanged"

    .line 258
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController$2;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/BarController;->access$900(Lcom/android/systemui/qs/bar/BarController;)Lcom/android/systemui/qs/bar/BarController$BarItemCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController$2;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/BarController;->access$900(Lcom/android/systemui/qs/bar/BarController;)Lcom/android/systemui/qs/bar/BarController$BarItemCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/bar/BarController$BarItemCallback;->onBarVisibilityChanged()V

    .line 261
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$2;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/BarController;->access$1000(Lcom/android/systemui/qs/bar/BarController;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    :cond_0
    return-void
.end method
