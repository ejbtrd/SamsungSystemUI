.class Lcom/android/systemui/statusbar/policy/NetspeedView$3;
.super Ljava/lang/Object;
.source "NetspeedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$3;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$3;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$600(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    return-void
.end method
