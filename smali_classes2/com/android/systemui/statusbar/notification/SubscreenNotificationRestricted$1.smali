.class Lcom/android/systemui/statusbar/notification/SubscreenNotificationRestricted$1;
.super Ljava/lang/Object;
.source "SubscreenNotificationRestricted.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationRestricted;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationRestricted;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationRestricted;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationRestricted$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationRestricted;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationRestricted$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationRestricted;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mCallback:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$Callback;

    if-eqz p0, :cond_0

    .line 35
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$Callback;->onVetoClicked()V

    :cond_0
    return-void
.end method
