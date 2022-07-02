.class Lcom/android/systemui/qs/buttons/QSMoreButton$1;
.super Ljava/lang/Object;
.source "QSMoreButton.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/buttons/QSMoreButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/buttons/QSMoreButton;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-static {v0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$000(Lcom/android/systemui/qs/buttons/QSMoreButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$002(Lcom/android/systemui/qs/buttons/QSMoreButton;Z)Z

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-static {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$100(Lcom/android/systemui/qs/buttons/QSMoreButton;)V

    :cond_0
    return-void
.end method
