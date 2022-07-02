.class Lcom/android/systemui/statusbar/LockscreenNotificationManager$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LockscreenNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/LockscreenNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$4;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 230
    :cond_0
    iget-boolean p1, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    xor-int/lit8 p1, p1, 0x1

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$4;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$900(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$4;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$902(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Z)Z

    .line 233
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$4;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const-string p1, "CoverStateUpdate"

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
