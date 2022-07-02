.class Lcom/android/keyguard/KeyguardHostViewController$11;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KeyguardHostViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardHostViewController;->initArrowViewTouchListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostViewController;)V
    .locals 0

    .line 1186
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$11;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1195
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$11;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$1000(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 1196
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$11;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/android/keyguard/KeyguardHostViewController;->access$2802(Lcom/android/keyguard/KeyguardHostViewController;I)I

    .line 1197
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$11;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$200(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 1198
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$11;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$1302(Lcom/android/keyguard/KeyguardHostViewController;Z)Z

    .line 1199
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$11;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/keyguard/KeyguardHostViewController;->access$500(Lcom/android/keyguard/KeyguardHostViewController;Z)V

    .line 1200
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$11;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0, v1}, Lcom/android/keyguard/KeyguardHostViewController;->access$2700(Lcom/android/keyguard/KeyguardHostViewController;Z)V

    const-string p0, "102"

    const-string p1, "1038"

    .line 1202
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1210
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$11;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$1000(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 1211
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$11;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$2800(Lcom/android/keyguard/KeyguardHostViewController;)I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 1212
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$11;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1, v1}, Lcom/android/keyguard/KeyguardHostViewController;->access$2802(Lcom/android/keyguard/KeyguardHostViewController;I)I

    goto :goto_0

    .line 1213
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$11;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$2800(Lcom/android/keyguard/KeyguardHostViewController;)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 1214
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$11;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/android/keyguard/KeyguardHostViewController;->access$2802(Lcom/android/keyguard/KeyguardHostViewController;I)I

    .line 1216
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$11;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$200(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 1217
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$11;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$1302(Lcom/android/keyguard/KeyguardHostViewController;Z)Z

    .line 1218
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$11;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1, v1}, Lcom/android/keyguard/KeyguardHostViewController;->access$500(Lcom/android/keyguard/KeyguardHostViewController;Z)V

    .line 1219
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$11;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0, v1}, Lcom/android/keyguard/KeyguardHostViewController;->access$2700(Lcom/android/keyguard/KeyguardHostViewController;Z)V

    const-string p0, "102"

    const-string p1, "1037"

    .line 1221
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1189
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$11;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$1000(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    const/4 p0, 0x0

    return p0
.end method
