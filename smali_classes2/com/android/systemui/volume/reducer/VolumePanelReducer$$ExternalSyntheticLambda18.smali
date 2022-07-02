.class public final synthetic Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda18;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda18;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda18;->INSTANCE:Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda18;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->$r8$lambda$SYiNoBvz1ruvrDDs9VP3wgSjn3g(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
