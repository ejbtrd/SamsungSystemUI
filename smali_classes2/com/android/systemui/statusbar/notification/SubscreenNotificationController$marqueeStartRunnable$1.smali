.class final Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$marqueeStartRunnable$1;
.super Ljava/lang/Object;
.source "SubscreenNotificationController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/log/LogBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$marqueeStartRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$marqueeStartRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getNotiTemplate$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->startMarquee()V

    :goto_0
    return-void
.end method
