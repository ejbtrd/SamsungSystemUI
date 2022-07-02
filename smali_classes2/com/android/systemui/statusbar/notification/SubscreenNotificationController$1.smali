.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;
.super Landroid/database/ContentObserver;
.source "SubscreenNotificationController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/log/LogBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 850
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 853
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 854
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getContext$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "turn_on_cover_screen_for_notification"

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 853
    invoke-static {p2, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$setNotiPopupBlocked$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Z)V

    .line 856
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getNotiPopupBlocked$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, " onChange - notiPopupBlocked = "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "S.S.N."

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
