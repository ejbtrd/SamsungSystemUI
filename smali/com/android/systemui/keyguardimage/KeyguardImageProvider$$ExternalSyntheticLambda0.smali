.class public final synthetic Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Lcom/android/systemui/keyguardimage/ImageCreator;

.field public final synthetic f$1:Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

.field public final synthetic f$2:Ljava/util/concurrent/BlockingDeque;


# direct methods
.method public synthetic constructor <init>([Lcom/android/systemui/keyguardimage/ImageCreator;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$0:[Lcom/android/systemui/keyguardimage/ImageCreator;

    iput-object p2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    iput-object p3, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/BlockingDeque;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$0:[Lcom/android/systemui/keyguardimage/ImageCreator;

    iget-object v1, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    iget-object p0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/BlockingDeque;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->$r8$lambda$GSHM8YZxV6caglYgUpcNHcal9hA([Lcom/android/systemui/keyguardimage/ImageCreator;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;)V

    return-void
.end method
