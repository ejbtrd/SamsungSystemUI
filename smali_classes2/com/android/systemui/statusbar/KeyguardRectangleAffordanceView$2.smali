.class Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$2;
.super Ljava/lang/Object;
.source "KeyguardRectangleAffordanceView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$2;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(I)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$2;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$300(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    return-void
.end method
