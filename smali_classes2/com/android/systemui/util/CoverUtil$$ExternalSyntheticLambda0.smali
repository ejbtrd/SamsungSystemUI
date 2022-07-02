.class public final synthetic Lcom/android/systemui/util/CoverUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/cover/CoverState;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/CoverUtil$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/cover/CoverState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/CoverUtil$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/cover/CoverState;

    check-cast p1, Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;

    invoke-static {p0, p1}, Lcom/android/systemui/util/CoverUtil;->$r8$lambda$v6kO2gJDADY-mFNgwehwlDzRKto(Lcom/samsung/android/cover/CoverState;Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;)V

    return-void
.end method
