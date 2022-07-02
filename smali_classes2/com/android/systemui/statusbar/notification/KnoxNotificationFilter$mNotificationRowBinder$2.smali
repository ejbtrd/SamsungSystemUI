.class final Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$mNotificationRowBinder$2;
.super Lkotlin/jvm/internal/Lambda;
.source "KnoxNotificationFilter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;-><init>(Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/knox/KnoxStateMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$mNotificationRowBinder$2;->this$0:Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$mNotificationRowBinder$2;->this$0:Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->access$getNotificationRowBinderLazy$p(Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$mNotificationRowBinder$2;->invoke()Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;

    move-result-object p0

    return-object p0
.end method
