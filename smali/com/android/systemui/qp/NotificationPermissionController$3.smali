.class Lcom/android/systemui/qp/NotificationPermissionController$3;
.super Landroid/database/ContentObserver;
.source "NotificationPermissionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qp/NotificationPermissionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qp/NotificationPermissionController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qp/NotificationPermissionController;Landroid/os/Handler;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController$3;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 160
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController$3;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->access$500(Lcom/android/systemui/qp/NotificationPermissionController;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mDeviceProvisioned:Z

    return-void
.end method
