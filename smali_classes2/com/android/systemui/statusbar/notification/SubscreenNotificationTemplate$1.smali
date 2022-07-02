.class Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;
.super Ljava/lang/Object;
.source "SubscreenNotificationTemplate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 41
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 44
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->performClick()V

    return-void
.end method
