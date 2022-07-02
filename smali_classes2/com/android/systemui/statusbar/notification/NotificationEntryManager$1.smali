.class Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;
.super Ljava/lang/Object;
.source "NotificationEntryManager.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    const-string/jumbo v0, "show_notification_snooze"

    .line 171
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->access$000(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V

    :cond_0
    return-void
.end method
