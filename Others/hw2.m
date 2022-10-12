% 微电导论作业2
function Ev=0;

def Eg(x):
    return 1.12

def gc(E, m_n):
    h = 6.62607E-34
    k1 = 4 * pi * ((2 * m_n)**1.5) / (h**3)
    return k1 * np.sqrt(E - 1.12)

def gv(E, m_p):
    h = 6.62607E-34
    k1 = 4 * pi * ((2 * m_p)**1.5) / (h**3)
    return k1 * np.sqrt(0 - E)