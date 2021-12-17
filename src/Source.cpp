#include <SFML/Graphics.hpp>
#include <inc/Source.hpp>
#include <iostream>

// ������������ ����
namespace ao
{
	// �����������
	Circle::Circle(int x, int y, float r, float angle, float v0)
	{
		m_x = x;
		m_y = y;
		m_r = r;
		m_v0 = v0;
		m_angle = (2 * acos(-1) - angle);
		m_circle = new sf::CircleShape(m_r);
		m_circle->setOrigin(m_r, m_r);
		m_circle->setPosition(m_x, m_y);
		m_circle->setFillColor(sf::Color::Green);
	}

	// ���������� 
	Circle::~Circle()
	{
		delete m_circle;
	}

	// �����, �������� �������� 
	void Circle::Move(float t, float g)
	{
		float x = m_x + m_v0 * cos(m_angle) * t;
		float y = m_y + m_v0 * sin(m_angle) * t + g * t * t / 2;

		m_circle->setPosition(x, y);
	}

	// �������� �������
	sf::CircleShape* Circle::Get()
	{
		return m_circle;
	}

	//����� ������ � ����� �������
	int Print()
	{
		int k;
		std::cout << "�������� �������: " << std::endl;
		std::cout << "������ -- 1 " << std::endl;
		std::cout << "����� -- 2 " << std::endl;
		std::cout << "�������� -- 3 " << std::endl;
		std::cout << "������ -- 4 " << std::endl;
		std::cout << "���� -- 5 " << std::endl;
		std::cout << "������ -- 6 " << std::endl;
		std::cout << "������ -- 7 " << std::endl;
		std::cout << "���� -- 8 " << std::endl;
		std::cout << "������ -- 9 " << std::endl;
		std::cout << "������ -- 10 " << std::endl;

		std::cin >> k;
		return k;
	}

	// ����������� g
	float G(int k)
	{
		float grav[11] = { 0, 9.8, 9.8, 3.7, 8.87, 3.721, 24.79, 10.44, 8.87, 11.15, 9.8 };
		float g = grav[k];
		return g;
	}
}