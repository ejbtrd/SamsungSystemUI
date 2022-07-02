.class final synthetic Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$1$2;
.super Ljava/lang/Object;
.source "KeyguardVisibilityMonitor.kt"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->registerMonitor(Landroid/view/View;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$1$2;->$tmp0:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$1$2;->$tmp0:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->heightChanged(I)V

    return-void
.end method
