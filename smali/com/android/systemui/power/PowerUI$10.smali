.class Lcom/android/systemui/power/PowerUI$10;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


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

    .line 1949
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 4

    .line 1951
    iget-object v0, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 1952
    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_2

    .line 1953
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getWirelessChargingDetectionContext()Landroid/hardware/scontext/SContextWirelessChargingDetection;

    move-result-object p1

    .line 1954
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextWirelessChargingDetection;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const-string v2, "PowerUI"

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SContextListener - Move"

    .line 1961
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p1, v3}, Lcom/android/systemui/power/PowerUI;->access$5102(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 1964
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p1}, Lcom/android/systemui/power/PowerUI;->access$5200(Lcom/android/systemui/power/PowerUI;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p1}, Lcom/android/systemui/power/PowerUI;->access$5300(Lcom/android/systemui/power/PowerUI;)I

    move-result p1

    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 1965
    invoke-static {p1}, Lcom/android/systemui/power/PowerUI;->access$5300(Lcom/android/systemui/power/PowerUI;)I

    move-result p1

    const/4 v3, 0x7

    if-eq p1, v3, :cond_2

    const-string p1, "Unregister SContextListener - From Listener"

    .line 1966
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p1}, Lcom/android/systemui/power/PowerUI;->access$5500(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v2}, Lcom/android/systemui/power/PowerUI;->access$5400(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextListener;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 1968
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p0, v0}, Lcom/android/systemui/power/PowerUI;->access$5202(Lcom/android/systemui/power/PowerUI;Z)Z

    goto :goto_0

    :cond_1
    const-string p1, "SContextListener - No Move"

    .line 1957
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p0, v0}, Lcom/android/systemui/power/PowerUI;->access$5102(Lcom/android/systemui/power/PowerUI;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
