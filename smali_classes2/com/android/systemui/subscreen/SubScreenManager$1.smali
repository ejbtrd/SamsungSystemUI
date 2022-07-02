.class Lcom/android/systemui/subscreen/SubScreenManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SubScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/subscreen/SubScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/subscreen/SubScreenManager;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockDisabledChanged(Z)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-static {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->access$600(Lcom/android/systemui/subscreen/SubScreenManager;Z)V

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-static {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->access$200(Lcom/android/systemui/subscreen/SubScreenManager;Ljava/lang/String;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-static {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->access$300(Lcom/android/systemui/subscreen/SubScreenManager;Ljava/lang/String;)V

    return-void
.end method

.method public onPackageDataCleared(Ljava/lang/String;)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-static {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->access$500(Lcom/android/systemui/subscreen/SubScreenManager;Ljava/lang/String;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/subscreen/SubScreenManager;->access$400(Lcom/android/systemui/subscreen/SubScreenManager;Ljava/lang/String;Z)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->access$000(Lcom/android/systemui/subscreen/SubScreenManager;)V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->access$100(Lcom/android/systemui/subscreen/SubScreenManager;)V

    return-void
.end method
