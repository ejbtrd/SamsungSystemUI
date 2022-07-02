.class public final synthetic Lcom/android/systemui/knox/DualDarMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/knox/DualDarMonitor;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/knox/DualDarMonitor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/knox/DualDarMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/knox/DualDarMonitor;

    iput p2, p0, Lcom/android/systemui/knox/DualDarMonitor$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/knox/DualDarMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/knox/DualDarMonitor;

    iget p0, p0, Lcom/android/systemui/knox/DualDarMonitor$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/android/systemui/knox/DualDarMonitor;->$r8$lambda$x26vpocP5sZ5qH9oAG5tNVPKduI(Lcom/android/systemui/knox/DualDarMonitor;I)V

    return-void
.end method
