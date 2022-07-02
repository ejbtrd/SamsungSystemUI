.class Lcom/android/systemui/power/PowerUI$7;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .line 1480
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$7;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1482
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$7;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$4500(Lcom/android/systemui/power/PowerUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PowerUI"

    const-string v1, "mWirelessMisalignTask"

    .line 1483
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$7;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$4600(Lcom/android/systemui/power/PowerUI;)V

    .line 1485
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$7;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p0}, Lcom/android/systemui/power/PowerUI;->access$4700(Lcom/android/systemui/power/PowerUI;)V

    :cond_0
    return-void
.end method
