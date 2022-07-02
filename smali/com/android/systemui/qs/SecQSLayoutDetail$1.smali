.class Lcom/android/systemui/qs/SecQSLayoutDetail$1;
.super Ljava/lang/Object;
.source "SecQSLayoutDetail.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/SecQSLayoutDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$1;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$1;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->access$000(Lcom/android/systemui/qs/SecQSLayoutDetail;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$1;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/SecQSLayoutDetail;->access$002(Lcom/android/systemui/qs/SecQSLayoutDetail;Z)Z

    .line 169
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$1;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-static {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->access$100(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    :cond_0
    return-void
.end method
