.class Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;
.super Ljava/lang/Object;
.source "NotificationIconAreaController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$SettingChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusBarIconSettingChanged(I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->access$002(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;I)I

    .line 138
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateStatusBarIcons()V

    .line 139
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAppearance()V

    .line 140
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->access$100(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    return-void
.end method
