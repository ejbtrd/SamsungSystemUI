.class Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail$1;
.super Ljava/lang/Object;
.source "SubscreenNotificationDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mCallback:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$Callback;

    if-eqz p0, :cond_0

    .line 37
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$Callback;->onVetoClicked()V

    :cond_0
    return-void
.end method
