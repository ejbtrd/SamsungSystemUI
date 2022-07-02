.class Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;
.super Ljava/lang/Object;
.source "LockscreenNotificationManager.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


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

    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$100(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$300(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "lockscreen_minimizing_notification"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$202(Lcom/android/systemui/statusbar/LockscreenNotificationManager;I)I

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " setting updated : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$200(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockscreenNotificationManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$200(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)I

    move-result p1

    if-le p1, v3, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$400(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$500(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V

    :cond_1
    return-void
.end method
