.class Lcom/android/systemui/knox/ContainerMonitor$6;
.super Landroid/os/ContainerStateReceiver;
.source "ContainerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/knox/ContainerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/knox/ContainerMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/knox/ContainerMonitor;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor$6;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    .line 731
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor$6;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/systemui/knox/ContainerMonitor;->access$1100(Lcom/android/systemui/knox/ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method public onContainerOneLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    .line 742
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor$6;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/systemui/knox/ContainerMonitor;->access$1100(Lcom/android/systemui/knox/ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method public onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1

    .line 705
    iget-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor$6;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p1}, Lcom/android/systemui/knox/ContainerMonitor;->access$100(Lcom/android/systemui/knox/ContainerMonitor;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 707
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor$6;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/systemui/knox/ContainerMonitor;->access$1100(Lcom/android/systemui/knox/ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_0

    .line 709
    :cond_0
    iget p3, p1, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v0, p3, 0x8

    if-lez v0, :cond_1

    .line 710
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor$6;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/knox/ContainerMonitor;->access$1100(Lcom/android/systemui/knox/ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_0

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-lez p3, :cond_2

    .line 712
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor$6;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/knox/ContainerMonitor;->access$1100(Lcom/android/systemui/knox/ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_0

    .line 714
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor$6;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/systemui/knox/ContainerMonitor;->access$1100(Lcom/android/systemui/knox/ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    :goto_0
    return-void
.end method

.method public onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    .line 719
    iget-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor$6;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p1}, Lcom/android/systemui/knox/ContainerMonitor;->access$100(Lcom/android/systemui/knox/ContainerMonitor;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 721
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor$6;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/systemui/knox/ContainerMonitor;->access$1100(Lcom/android/systemui/knox/ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_0

    .line 723
    :cond_0
    iget p2, p1, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 p3, p2, 0x8

    if-lez p3, :cond_1

    .line 724
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor$6;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/knox/ContainerMonitor;->access$1100(Lcom/android/systemui/knox/ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_0

    :cond_1
    and-int/lit8 p2, p2, 0x4

    if-lez p2, :cond_2

    .line 726
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor$6;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/knox/ContainerMonitor;->access$1100(Lcom/android/systemui/knox/ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    .line 735
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor$6;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/systemui/knox/ContainerMonitor;->access$1100(Lcom/android/systemui/knox/ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method public onLicenseExpired(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
